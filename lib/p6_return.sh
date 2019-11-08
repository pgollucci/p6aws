# This works like MixIns in Ruby

p6_return_aws_arn() {
    local arn="$1"

    p6_return_str "$arn"
}

p6_return_aws_account_id() {
    local account_id="$1"

    p6_return_str "$account_id"
}

p6_return_aws_resource_id() {
    local resource_id="$1"

    p6_return_str "$resource_id"
}

p6_return_aws_logical_id() {
    local logical_id="$1"

    p6_return_str "$logical_id"
}

p6_return_aws_cfg() {
    local cfg="$1"

    p6_return_obj "$cfg"
}
