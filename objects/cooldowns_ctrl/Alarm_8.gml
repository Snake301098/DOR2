/// @description DIMINISHER effect


if instance_exists(owner)
{
owner.can_use_diminisher = true;

}
else
{
	instance_destroy();
}