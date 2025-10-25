/// @description VENOM effect


if instance_exists(owner)
{
owner.can_use_venom = true;

}
else
{
	instance_destroy();
}