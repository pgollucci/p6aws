######################################################################
#<
#
# Function:
#	p6_aws_codebuild_enabled(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_codebuild_enabled() {
        local name="$1"
        shift 1

    cond_log_and_run aws codebuild update-project --name $name --badge-enabled "$@"
}