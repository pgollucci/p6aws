######################################################################
#<
#
# Function:
#	p6_aws_rds_option_group_create(option_group_name, engine_name, major_engine_version, option_group_description)
#
#  Args:
#	option_group_name - 
#	engine_name - 
#	major_engine_version - 
#	option_group_description - 
#
#>
######################################################################
p6_aws_rds_option_group_create() {
    local option_group_name="$1"
    local engine_name="$2"
    local major_engine_version="$3"
    local option_group_description="$4"
    shift 4

    p6_run_write_cmd aws rds create-option-group --option-group-name $option_group_name --engine-name $engine_name --major-engine-version $major_engine_version --option-group-description $option_group_description "$@"
}