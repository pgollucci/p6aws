######################################################################
#<
#
# Function:
#      = p6_aws_kafka_configuration_revisions_list(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_kafka_configuration_revisions_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws kafka list-configuration-revisions --arn $arn "$@"
}