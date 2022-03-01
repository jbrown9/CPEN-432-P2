/**
 * @file   uart.c
 *
 * @brief  lower level hardware interactions for uart on pi
 *
 * @date   submission_date
 * @author your_name
 */
#include <gpio.h>
#include <kstdint.h>
#include <uart.h>
#include <printk.h>
#include <interrupts.h>

/** @brief AUXEN register */
#define AUXENB                      (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00215004)
/** @brief AUX_MU_IO register */
#define AUX_MU_IO_REG               (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00215040)
/** @brief AUX_MU_LSR register */
#define AUX_MU_LSR_REG              (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00215054)
/** @brief AUX_MU_CNTL register */
#define AUX_MU_CNTL_REG             (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00215060)
/** @brief AUX_MU_IIR register */
#define AUX_MU_IIR_REG              (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00215048)
/** @brief AUX_MU_IER register */
#define AUX_MU_IER_REG              (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00215044)
/** @brief AUX_MU_ICR register */
#define AUX_MU_LCR_REG              (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x0021504C)
/** @brief AUX_MU_BAUD register */
#define AUX_MU_BAUD                 (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00215068)


/**
 * @brief initializes UART to 115200 baud in 8-bit mode
*/
void uart_init(void) {

    gpio_config(RX_PIN, GPIO_FUN_ALT5);
    gpio_config(TX_PIN, GPIO_FUN_ALT5);

    gpio_set_pull(RX_PIN, GPIO_PULL_DISABLE);
    gpio_set_pull(TX_PIN, GPIO_PULL_DISABLE);

  
    *AUXENB = 1;                  /** The AUXENB register is used to enable access to the MMIO peripherals of UART.This should be the first thing you do in uart_init() */
    *AUX_MU_CNTL_REG = 0;         /**  disable transmitter and reciever */
    *AUX_MU_IER_REG = 0;          /**  The AUX_MU_IER_REG register should be set to 0. You should not enable interrupts for UART. */
    *AUX_MU_LCR_REG = 3;          /**  Do not set DLAB access inside of the AUX_MU_LCR_REG register. 8-bit mode */
    *AUX_MU_BAUD = 270;           /**  The AUX_MU_BAUD register is where you should put your baud value after solving the equation on page 11 for baudrate_reg. Set baud rate to 115200 */
    *AUX_MU_CNTL_REG = 3;         /**  enable transmitter and reciever */

}

/**
 * @brief closes UART
 */
void uart_close(void) {
  
  *AUX_MU_CNTL_REG = 3;         /** disable transmitter and reciever */
  *AUXENB = 0;                  /** disable access to MMIO peripherals of UART */
  
}

/**
 * @brief sends a byte over UART
 *
 * @param byte the byte to send
 */
void uart_put_byte(uint8_t byte) {

  while(1)                                  /** wait for the transmitter to be ready */
  {
    if((*AUX_MU_LSR_REG & 0x20) == 0x20)    /** if the transmitter is empty */
    {
      break;      
    }
  }
  *AUX_MU_IO_REG = byte;                    /** write the byte to the transmitter FIFO */
}

/**
 * @brief reads a byte over UART
 *
 * @return the byte received
 */
uint8_t uart_get_byte(void) {
  while (1)                                 /** wait for the transmitter to be ready */
  {
      if ((*AUX_MU_LSR_REG & 0x01) == 0x01) {    /** if the transmitter has a byte */
          break;
      }
  }  
  return(*AUX_MU_IO_REG & 0xFF);
}
