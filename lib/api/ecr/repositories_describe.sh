######################################################################
#<
#
# Function:
#      = p6_aws_ecr_repositories_describe()
#
#
#
#>
######################################################################
p6_aws_ecr_repositories_describe() {

    p6_run_read_cmd aws ecr describe-repositories "$@"
}