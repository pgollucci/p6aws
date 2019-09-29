######################################################################
#<
#
# Function:
#      = p6_aws_dax_default_parameters_describe()
#
#
#
#>
######################################################################
p6_aws_dax_default_parameters_describe() {

    p6_run_read_cmd aws dax describe-default-parameters "$@"
}