######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_key_pairs_get()
#
#
#
#>
######################################################################
p6_aws_lightsail_key_pairs_get() {

    p6_run_read_cmd aws lightsail get-key-pairs "$@"
}