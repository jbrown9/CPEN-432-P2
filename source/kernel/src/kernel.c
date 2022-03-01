/**
 * @file   kernel.c
 *
 * @brief  Project 1 optimization part
 *
 * @date   9/20/2016
 * @author Kyuin Lee <kyuinl@andrew.cmu.edu>
 */

#define ARM_INTERRUPT_EN_REG (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B218)
#define INTERRUPT_CONTROLLER_BASE   (volatile uint32_t*)( MMIO_BASE_PHYSICAL + 0xB200 )

#include <arm.h>
#include <kstdint.h>
#include <uart.h>
#include <printk.h>
#include <basic_timer.h>
#include <printk.h>
#include <timer.h>
#include <interrupts.h>


#define SIZE 500
int array1[SIZE],array2[SIZE];

void optimized(int array[SIZE]);
void unoptimized(int array[SIZE]);


/** @brief the physical address for the start of MMIO */
#define MMIO_BASE_PHYSICAL 0x3F000000

/** @brief base of GPIO in memory mapped IO on pi
 * see page 89 onward in BCM2835 peripherals for info about MMIO for GPIO */
#define GPIO_BASE (MMIO_BASE_PHYSICAL + 0x200000)

/* GPIO MMIO control/status register offsets from GPIO_BASE */
/** @brief GPIO Function Select 0 */
#define GPIO_REG_GPFSEL0    0
/** @brief GPIO Function Select 1 */
#define GPIO_REG_GPFSEL1    1
/** @brief GPIO Function Select 2 */
#define GPIO_REG_GPFSEL2    2
/** @brief GPIO Function Select 3 */
#define GPIO_REG_GPFSEL3    3
/** @brief GPIO Function Select 4 */
#define GPIO_REG_GPFSEL4    4
/** @brief GPIO Function Select 5 */
#define GPIO_REG_GPFSEL5    5
/** @brief GPIO Pin Output Set 0 */
#define GPIO_REG_GPSET0     7
/** @brief GPIO Pin Output Set 1 */
#define GPIO_REG_GPSET1     8
/** @brief GPIO Pin Output Clear 0 */
#define GPIO_REG_GPCLR0     10
/** @brief GPIO Pin Output Clear 1 */
#define GPIO_REG_GPCLR1     11
/** @brief GPIO Pin Level 0 */
#define GPIO_REG_GPLEV0     13
/** @brief GPIO Pin Level 1 */
#define GPIO_REG_GPLEV1     14
/** @brief GPIO Pin Event Detect Status 0 */
#define GPIO_REG_GPEDS0     16
/** @brief GPIO Pin Event Detect Status 1 */
#define GPIO_REG_GPEDS1     17
/** @brief GPIO Pin Rising Edge Detect Enable 0 */
#define GPIO_REG_GPREN0     19
/** @brief GPIO Pin Rising Edge Detect Enable 1 */
#define GPIO_REG_GPREN1     20
/** @brief GPIO Pin Falling Edge Detect Enable 0 */
#define GPIO_REG_GPFEN0     22
/** @brief GPIO Pin Falling Edge Detect Enable 1 */
#define GPIO_REG_GPFEN1     23
/** @brief GPIO Pin High Detect Enable 0 */
#define GPIO_REG_GPHEN0     25
/** @brief GPIO Pin High Detect Enable 1 */
#define GPIO_REG_GPHEN1     26
/** @brief GPIO Pin Low Detect Enable 0 */
#define GPIO_REG_GPLEN0     28
/** @brief GPIO Pin Low Detect Enable 1 */
#define GPIO_REG_GPLEN1     29
/** @brief GPIO Pin Async. Rising Edge Detect 0 */
#define GPIO_REG_GPAREN0    31
/** @brief GPIO Pin Async. Rising Edge Detect 1 */
#define GPIO_REG_GPAREN1    32
/** @brief GPIO Pin Async. Falling Edge Detect 0 */
#define GPIO_REG_GPAFEN0    34
/** @brief GPIO Pin Async. Falling Edge Detect 1 */
#define GPIO_REG_GPAFEN1    35
/** @brief GPIO Pin Pull-up/down Enable */
#define GPIO_REG_GPPUD      37
/** @brief GPIO Pin Pull-up/down Enable Clock 0 */
#define GPIO_REG_GPPUDCLK0  38
/** @brief GPIO Pin Pull-up/down Enable Clock 1 */
#define GPIO_REG_GPPUDCLK1  39


#define LED_GPFSEL      GPIO_REG_GPFSEL4
#define LED_GPFBIT      21
#define LED_GPSET       GPIO_REG_GPSET1
#define LED_GPCLR       GPIO_REG_GPCLR1
#define LED_GPIO_BIT    15





void kernel_main(void) {

  int index;
  int good = 1;
  uint32_t timer_value;
  
  uart_init();
  //initialize the two arrays
  for (index = 0; index < SIZE; ++index) {
    array1[index] = index;
    array2[index] = index;
  }
  
  //Start measuring ticks for optimized function
  printk("+++++++Optimized Function+++++++\r\n");
  start_countdown();
  optimized(array1);
  timer_value = timer_latch();
  printk("%d\r\n",timer_value);

  //Start measuring ticks for unoptimized function
  printk("+++++++Unoptimized Function+++++++\r\n");
  start_countdown();
  unoptimized(array2);
  timer_value = timer_latch();
  printk("%d\r\n",timer_value);

  //checking the correctness.
  for (index = 0; index < SIZE; ++index)  {
    if (array1[index] != array2[index]) {   
      //Print failed
      printk("index: %d\n", index);
      printk("my:  %u\n", array1[index]);
      printk("sys: %u\n", array2[index]);
      printk("+++++++Test Failed+++++++\r\n");
      good = 0;
      break;
    }
  }
  
  if (good) {
    //Print passed
    printk("+++++++Test Passed+++++++\r\n");
  }
  /* Enable the timer interrupt IRQ */

  //RPI_GetIrqController()->Enable_Basic_IRQs = RPI_BASIC_ARM_TIMER_IRQ;
  /* *ARM_INTERRUPT_EN_REG = 0x1; / ** Enable the ARM Timer IRQ * /
  
  timer_start(1); 
  delay_cycles(5);
  printk("Control Reg Value %x\n", *ARM_TIMER_CTRL_REG);
  printk("timer value %u\n", *TIMER_VALUE);
  printk("timer pending %d\n", timer_is_pending());
  printk("Interrupt Timer Pending %x\n", (*INTERRUPT_CONTROLLER_BASE));*/

  *ARM_INTERRUPT_EN_REG = 0x1; /** Enable the ARM Timer IRQ */
  timer_start(0.1);

  enable_interrupts(); /** inable interupts */
  delay_cycles(5);
  
  while (1) {
    if(timer_is_pending() == 0)
    {
      printk("\r\nControl Reg Value %x\r\n", *ARM_TIMER_CTRL_REG);
      printk("timer value %u\r\n", *TIMER_VALUE);
      printk("timer pending %d\r\n", timer_is_pending());
      printk("Interrupt Timer Pending %x\r\n", (*INTERRUPT_CONTROLLER_BASE));
      delay_cycles(100);
    }
  }
  
}
