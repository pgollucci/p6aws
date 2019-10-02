######################################################################
#<
#
# Function:
#	p6_aws_personalize_campaign_create(name, solution_version_arn, min_provisioned_tps)
#
#  Args:
#	name - 
#	solution_version_arn - 
#	min_provisioned_tps - 
#
#>
######################################################################
p6_aws_personalize_campaign_create() {
    local name="$1"
    local solution_version_arn="$2"
    local min_provisioned_tps="$3"
    shift 3

    p6_run_write_cmd aws personalize create-campaign --name $name --solution-version-arn $solution_version_arn --min-provisioned-tps $min_provisioned_tps "$@"
}