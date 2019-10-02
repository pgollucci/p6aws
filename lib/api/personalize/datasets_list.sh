######################################################################
#<
#
# Function:
#	p6_aws_personalize_datasets_list()
#
#>
######################################################################
p6_aws_personalize_datasets_list() {

    p6_run_read_cmd aws personalize list-datasets "$@"
}