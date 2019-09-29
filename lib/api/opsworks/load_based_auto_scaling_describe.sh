######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_load_based_auto_scaling_describe(layer_ids)
#
# Arg(s):
#    layer_ids - 
#
#
#>
######################################################################
p6_aws_opsworks_load_based_auto_scaling_describe() {
    local layer_ids="$1"
    shift 1

    p6_run_read_cmd aws opsworks describe-load-based-auto-scaling --layer-ids $layer_ids "$@"
}