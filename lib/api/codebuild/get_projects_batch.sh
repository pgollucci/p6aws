######################################################################
#<
#
# Function:
#	p6_aws_codebuild_get_projects_batch(names)
#
#  Args:
#	names - 
#
#>
######################################################################
p6_aws_codebuild_get_projects_batch() {
    local names="$1"
    shift 1

    p6_run_read_cmd aws codebuild batch-get-projects --names $names "$@"
}