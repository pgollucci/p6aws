######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_default_key_pair_download()
#
#
#
#>
######################################################################
p6_aws_lightsail_default_key_pair_download() {

    p6_run_write_cmd aws lightsail download-default-key-pair "$@"
}