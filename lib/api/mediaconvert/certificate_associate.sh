######################################################################
#<
#
# Function:
#      = p6_aws_mediaconvert_certificate_associate(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_mediaconvert_certificate_associate() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws mediaconvert associate-certificate --arn $arn "$@"
}