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
  printk("+++++++Optimized Function+++++++\n");
  start_countdown();
  optimized(array1);
  timer_value = timer_latch();
  printk("%d\n",timer_value);

  //Start measuring ticks for unoptimized function
  printk("+++++++Unoptimized Function+++++++\n");
  start_countdown();
  unoptimized(array2);
  timer_value = timer_latch();
  printk("%d\n",timer_value);

  //checking the correctness.
  for (index = 0; index < SIZE; ++index)  {
    if (array1[index] != array2[index]) {   
      //Print failed
      printk("index: %d\n", index);
      printk("my:  %u\n", array1[index]);
      printk("sys: %u\n", array2[index]);
      printk("+++++++Test Failed+++++++\n");
      good = 0;
      break;
    }
  }
  
  if (good) {
    //Print passed
    printk("+++++++Test Passed+++++++\n");
  }
  /* Enable the timer interrupt IRQ */
  //RPI_GetIrqController()->Enable_Basic_IRQs = RPI_BASIC_ARM_TIMER_IRQ;
  *ARM_INTERRUPT_EN_REG = 0x1; /** Enable the ARM Timer IRQ */
  timer_start(1); 
  delay_cycles(5);
  printk("Control Reg Value %x\n", *ARM_TIMER_CTRL_REG);
  printk("timer value %u\n", *TIMER_VALUE);
  printk("timer pending %d\n", timer_is_pending());
  printk("Interrupt Timer Pending %x\n", (*INTERRUPT_CONTROLLER_BASE));
  while (1) {
    delay_cycles(10000);
    
  }
  
}
