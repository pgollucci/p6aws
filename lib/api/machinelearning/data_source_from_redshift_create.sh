######################################################################
#<
#
# Function:
#      = p6_aws_machinelearning_data_source_from_redshift_create(data_source_id, data_spec, role_arn)
#
# Arg(s):
#    data_source_id - 
#    data_spec - 
#    role_arn - 
#
#
#>
######################################################################
p6_aws_machinelearning_data_source_from_redshift_create() {
    local data_source_id="$1"
    local data_spec="$2"
    local role_arn="$3"
    shift 3

    p6_run_write_cmd aws machinelearning create-data-source-from-redshift --data-source-id $data_source_id --data-spec $data_spec --role-arn $role_arn "$@"
}