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

extern void reset_asm_handler(void);

int32_t array1[SIZE],array2[SIZE];

void optimized(int array[SIZE]);
void unoptimized(int array[SIZE]);


void kernel_main(void) {

  int32_t index;
  int32_t good = 1;
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
  /* set output pins for leds*/
  //RPI_SetGpioPinFunction(LED_GPIO, FS_OUTPUT);
  //RPI_SetGpioHi(LED_GPIO);
  
  /* Enable the timer interrupt IRQ */

  //gic400_init(0xFF840000UL);

  *ARM_INTERRUPT_EN_REG = 0x1; /** Enable the ARM Timer IRQ */
  enable_interrupts(); /** enable interupts */
  //RPI_EnableARMTimerInterrupt();
  timer_start(0.1);

  /*char getspeed = 0;

  while (getspeed != 'r' || getspeed != 1 || getspeed != 2 || getspeed != 3) {
      printk("Please select a value for the interrupt frequency: ");
      getspeed = uart_get_byte();
  }
  if (getspeed == 1) {
      timer_start(0.1);
  }
  else if (getspeed == 2) {
      timer_start(0.1);
  }
  else if (getspeed == 3) {
      timer_start(0.1);
  }
  else if (getspeed == 'r') {
      reset_asm_handler();
  }*/

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
