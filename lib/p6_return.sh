# This works like MixIns in Ruby

######################################################################
#<
#
# Function: str arn = p6_return_aws_arn()
#
#  Returns:
#	str - arn
#
#>
######################################################################
p6_return_aws_arn() {
    local arn="$1"

    p6_return_str "$arn"
}

######################################################################
#<
#
# Function: str account_id = p6_return_aws_account_id(account_id)
#
#  Args:
#	account_id - 
#
#  Returns:
#	str - account_id
#
#>
######################################################################
p6_return_aws_account_id() {
    local account_id="$1"

    p6_return_str "$account_id"
}

######################################################################
#<
#
# Function: str resource_id = p6_return_aws_resource_id(resource_id)
#
#  Args:
#	resource_id - 
#
#  Returns:
#	str - resource_id
#
#>
######################################################################
p6_return_aws_resource_id() {
    local resource_id="$1"

    p6_return_str "$resource_id"
}

######################################################################
#<
#
# Function: str logical_id = p6_return_aws_logical_id(logical_id)
#
#  Args:
#	logical_id - 
#
#  Returns:
#	str - logical_id
#
#>
######################################################################
p6_return_aws_logical_id() {
    local logical_id="$1"

    p6_return_str "$logical_id"
}

######################################################################
#<
#
# Function: obj cfg = p6_return_aws_cfg(cfg)
#
#  Args:
#	cfg - 
#
#  Returns:
#	obj - cfg
#
#>
######################################################################
p6_return_aws_cfg() {
    local cfg="$1"

    p6_return_obj "$cfg"
}