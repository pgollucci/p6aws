######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_auto_healing(layer_id)
#
# Arg(s):
#    layer_id - 
#
#
#>
######################################################################
p6_aws_opsworks_auto_healing() {
        local layer_id="$1"
        shift 1

    cond_log_and_run aws opsworks update-layer --layer-id $layer_id --enable-auto-healing "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_assign_elastic_ips(layer_id)
#
# Arg(s):
#    layer_id - 
#
#
#>
######################################################################
p6_aws_opsworks_assign_elastic_ips() {
        local layer_id="$1"
        shift 1

    cond_log_and_run aws opsworks update-layer --layer-id $layer_id --auto-assign-elastic-ips "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_assign_public_ips(layer_id)
#
# Arg(s):
#    layer_id - 
#
#
#>
######################################################################
p6_aws_opsworks_assign_public_ips() {
        local layer_id="$1"
        shift 1

    cond_log_and_run aws opsworks update-layer --layer-id $layer_id --auto-assign-public-ips "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_updates_on_boot(instance_id, layer_id)
#
# Arg(s):
#    instance_id - 
#    layer_id - 
#
#
#>
######################################################################
p6_aws_opsworks_updates_on_boot() {
        local layer_id="$1"
        shift 1

    cond_log_and_run aws opsworks update-layer --layer-id $layer_id --install-updates-on-boot "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_ebs_optimized_instances(layer_id)
#
# Arg(s):
#    layer_id - 
#
#
#>
######################################################################
p6_aws_opsworks_ebs_optimized_instances() {
        local layer_id="$1"
        shift 1

    cond_log_and_run aws opsworks update-layer --layer-id $layer_id --use-ebs-optimized-instances "$@"
}
