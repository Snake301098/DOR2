/// @description ISH
if instance_exists(owner)
{
owner.can_use_ish = true;

}
else
{
	instance_destroy();
}