NEURON {
    POINT_PROCESS AL_iinj
    ELECTRODE_CURRENT i
    RANGE del, dur, amp
}

UNITS {
	(pA) = (picoamp)
    (nA) = (nanoamp)
}


PARAMETER {
    del = 100 (ms)     : delay before the step starts
    dur = 500 (ms)     : duration of the step
    amp = 0   (nA)     : amplitude of the step current
}

ASSIGNED {
    i (nA)
}

BREAKPOINT {
    if (t < del || t > del + dur) {
        i = 0
    } else {
        i = amp
    }
}
