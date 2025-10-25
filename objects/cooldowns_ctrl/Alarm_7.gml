/// @description SOLACE effect

if instance_exists(owner)
{

owner.can_use_solace = true;

}
else
{
	instance_destroy();
}