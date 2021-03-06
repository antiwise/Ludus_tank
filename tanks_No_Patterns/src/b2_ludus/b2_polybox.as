package b2_ludus
{
	import Box2D.Collision.Shapes.b2PolygonShape;
	import Box2D.Collision.Shapes.b2Shape;
	import Box2D.Dynamics.b2Body;
	import Box2D.Dynamics.b2BodyDef;
	import Box2D.Dynamics.b2FixtureDef;
	/**
	 * @author Ludus Team
	 */
	public class b2_polybox
	{
		//This function is on charge of creating a custom polygone using
		//an vertec array.
		public function createPolyBox(world:b2_world, 
									  xpos:Number, 
									  ypos:Number, 
									  vertex:Array, 
									  isDynamic:Boolean,
									  density:Number = 0,
									  friction:Number = 0,
									  restitution:Number = 0):b2Body{
			
			//body definition
			var body_def:b2BodyDef = new b2BodyDef();
			
			if(isDynamic){
				body_def.type = b2Body.b2_dynamicBody;	
			}else{
				body_def.type = b2Body.b2_staticBody;
			}
			body_def.position.Set(xpos, ypos);
			
			//body shape
			var body_shape:b2PolygonShape = new b2PolygonShape();
			body_shape.SetAsArray(vertex);
			
			//body fixture
			var body_fix:b2FixtureDef = new b2FixtureDef();
			body_fix.shape = body_shape;
			body_fix.density = density;
			body_fix.friction = friction;
			body_fix.restitution = restitution;
			
			//body
			var body:b2Body;
			body = world.CreateBody(body_def);
			body.CreateFixture(body_fix);
			
			return body
		}
	}
}