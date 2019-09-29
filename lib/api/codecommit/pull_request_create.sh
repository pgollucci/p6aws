######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_pull_request_create(title, targets)
#
# Arg(s):
#    title - 
#    targets - 
#
#
#>
######################################################################
p6_aws_codecommit_pull_request_create() {
    local title="$1"
    local targets="$2"
    shift 2

    p6_run_write_cmd aws codecommit create-pull-request --title $title --targets $targets "$@"
}