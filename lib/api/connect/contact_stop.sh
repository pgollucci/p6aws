p6_aws_connect_contact_stop() {
    local contact_id="$1"
    local instance_id="$2"
    shift 2

    p6_run_write_cmd aws connect stop-contact --contact-id $contact_id --instance-id $instance_id "$@"
}
