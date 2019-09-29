######################################################################
#<
#
# Function:
#      = p6_aws_mq_configuration_revision_describe(configuration_id, configuration_revision)
#
# Arg(s):
#    configuration_id - 
#    configuration_revision - 
#
#
#>
######################################################################
p6_aws_mq_configuration_revision_describe() {
    local configuration_id="$1"
    local configuration_revision="$2"
    shift 2

    p6_run_read_cmd aws mq describe-configuration-revision --configuration-id $configuration_id --configuration-revision $configuration_revision "$@"
}