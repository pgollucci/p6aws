######################################################################
#<
#
# Function:
#      = p6_aws_cloudsearch_scaling_parameters_describe(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_cloudsearch_scaling_parameters_describe() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws cloudsearch describe-scaling-parameters --domain-name $domain_name "$@"
}