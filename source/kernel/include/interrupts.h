/*
    Part of the Raspberry-Pi Bare Metal Tutorials
    https://www.valvers.com/rpi/bare-metal/
    Copyright (c) 2013-2018, Brian Sidebotham

    This software is licensed under the MIT License.
    Please see the LICENSE file included with this software.

*/

#ifndef RPI_INTERRUPTS_H
#define RPI_INTERRUPTS_H

#include <stdint.h>

#include "rpi-base.h"

extern void RPI_EnableARMTimerInterrupt(void);

#endif

/** @brief See Section 7.5 of the BCM2835 ARM Peripherals documentation, the base
    address of the controller is actually xxxxB000, but there is a 0x200 offset
    to the first addressable register for the interrupt controller, so offset the
    base to the first register */
#define RPI_INTERRUPT_CONTROLLER_BASE   ( PERIPHERAL_BASE + 0xB200 )

    /** @brief The interrupt controller memory mapped register set */
typedef struct {
    volatile uint32_t IRQ_basic_pending;
    volatile uint32_t IRQ_pending_1;
    volatile uint32_t IRQ_pending_2;
    volatile uint32_t FIQ_control;
    volatile uint32_t Enable_IRQs_1;
    volatile uint32_t Enable_IRQs_2;
    volatile uint32_t Enable_Basic_IRQs;
    volatile uint32_t Disable_IRQs_1;
    volatile uint32_t Disable_IRQs_2;
    volatile uint32_t Disable_Basic_IRQs;
} rpi_irq_controller_t;