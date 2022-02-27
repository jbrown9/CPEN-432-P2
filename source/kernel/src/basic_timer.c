/**
 * @file   basic_timer.c
 *
 * @brief  basic routine implementations for interacting with the ARM timer.
 *
 * @date   
 * @author your_name <email>
 */

#include <basic_timer.h>
/** @brief Timer Load register. Sets time for timer to count down. */
#define TIMER_LOAD                (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x0000B400)
/** @brief Timer Value register read only. Holds current timer value. */
#define TIMER_VALUE               (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x0000B404)
/** @brief Timer Control register  */
#define TIMER_CONTROL             (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x0000B408)
/** @brief Timer Reload register */
#define TIMER_RELOAD              (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x0000B418)
/** @brief Timer Pre-Divider register */
#define TIMER_PRE_DIVIDER         (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x0000B41C)

void start_countdown(void) {
  *TIMER_LOAD = 0xFFFFFFFF;           /** Set timer to count down from 4294967295 (max value) */  
  *TIMER_RELOAD = 0xFFFFFFFF;         /** Set timer reload 4294967295 when it has finished initial count */
  *TIMER_CONTROL = 0x00000082;        /** bit7: 1 -> Timer enabled, bit1: 1 -> 32-bit counter */
  *TIMER_PRE_DIVIDER = 0x00000001;    /** Set pre-divider value to 1 as */
}

uint32_t timer_latch(void) {
  return *TIMER_LOAD - *TIMER_VALUE;
}
