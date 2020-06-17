#
# Creates or re-uses an AWS EC2 key pair.
#
# AWS MUST be considered authoritative b/c if a key pair exists it may be in use
# If AWS has no key pair then we should make a new one even if we have matches locally
#
# XXX: KeyPairs are regional, so this should be too
# XXX: Should gen key name if none given
#
# IF AWS
#   IF no priv THEN punt
#   IF no pub THEN priv->pub
#   IF no check THEN overwrite priv->pub
#   IF no match THEN punt
# ELSE !AWS
#   Nuke local
#   Make local
#   Import to AWS
#
