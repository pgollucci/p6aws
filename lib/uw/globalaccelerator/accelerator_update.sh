aws_globalaccelerator_enabled() {
        local accelerator_arn="$1"
        shift 1

    cond_log_and_run aws globalaccelerator update-accelerator --accelerator-arn $accelerator_arn --enabled "$@"
}

