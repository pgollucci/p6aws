######################################################################
#<
#
# Function:
#      = p6_aws_cloudtrail_logging_start(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_cloudtrail_logging_start() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws cloudtrail start-logging --name $name "$@"
}