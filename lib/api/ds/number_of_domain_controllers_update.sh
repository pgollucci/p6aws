p6_aws_ds_number_of_domain_controllers_update() {
    local directory_id="$1"
    local desired_number="$2"
    shift 2

    p6_log_or_run aws ds update-number-of-domain-controllers --directory-id $directory_id --desired-number $desired_number "$@"
}
