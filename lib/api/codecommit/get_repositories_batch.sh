######################################################################
#<
#
# Function:
#	p6_aws_codecommit_get_repositories_batch(repository_names)
#
#  Args:
#	repository_names - 
#
#>
######################################################################
p6_aws_codecommit_get_repositories_batch() {
    local repository_names="$1"
    shift 1

    p6_run_read_cmd aws codecommit batch-get-repositories --repository-names $repository_names "$@"
}