/**
 * @file   timer.h
 *
 * @brief  interrupt timers for ARM
 *
 * @date   
 * @author your_name <email>
 */

#ifndef __TIMER_H_
#define __TIMER_H__

#include <kstdint.h>	// to support uint32_t data types
#include <BCM2836.h>

/** @brief ARM Timer Load Register */
#define ARM_TIMER_LOAD_REG      (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B400)
/** @brief ARM Timer Value Register */
#define ARM_TIMER_VALUE_REG     (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B404)
/** @brief ARM Timer Control Register */
#define ARM_TIMER_CTRL_REG      (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B408)
/** @brief ARM Timer IRQ Clear/ACK Register */
#define ARM_TIMER_IRQ_REG       (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B40C)
/** @brief ARM Timer RAW IRQ Register */
#define ARM_TIMER_RAW_REG       (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B410)
/** @brief ARM Timer Masked Register */
#define ARM_TIMER_MASKED_REG    (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B414)
/** @brief ARM Timer Reload Register */
#define ARM_TIMER_RELOAD_REG    (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B418)
/** @brief ARM Timer Pre-Divide Register */
#define ARM_TIMER_PREDIVIDER    (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B41C)
/** @brief ARM Timer Free Running Coutner Register */
#define ARM_TIMER_FCOUNTER_REG  (volatile uint32_t*)(MMIO_BASE_PHYSICAL + 0x00B420)

/**
 * @brief Configures the arm timer to start running with the given frequency. 
          The Timer should run in 32 bit mode, with a prescaler of 1, and with 
 *		  interrupts enabled.
 *
 * @param freq  frequency at which to run the timer
 */
void timer_start(int freq);

/**
 * @brief Disables timer IRQs
 */
void timer_stop(void);

/**
 * @brief Determines if there is currently a pending timer interrupt
 *
 * @return 1 if timer interrupt is pending, 0 if not.
 */
int timer_is_pending(void);

/**
 * @brief Should be called to acknowledge that a timer interrupt occurred and 
 *          has been appropriately handled. Will clear the pending bit in the 
 *		    timer's MMIO registers.
 */
void timer_clear_pending(void);

#endif