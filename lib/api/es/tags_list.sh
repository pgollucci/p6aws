######################################################################
#<
#
# Function:
#      = p6_aws_es_tags_list(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_es_tags_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws es list-tags --arn $arn "$@"
}