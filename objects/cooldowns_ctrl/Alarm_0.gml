/// @description Change config
if instance_exists(owner)
{
	owner.can_change_config = true;
	if owner=gamer.id then persistent=true
}
else
{
	instance_destroy();
}