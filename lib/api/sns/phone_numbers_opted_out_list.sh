p6_aws_sns_phone_numbers_opted_out_list() {

    p6_run_read_cmd aws sns list-phone-numbers-opted-out "$@"
}
