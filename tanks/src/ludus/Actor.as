package ludus  
{

//Flash Imports
import flash.display.Sprite;
import flash.display.Stage;

import ludus.Box2D.Dynamics.b2Body;
import ludus.Box2D.Dynamics.b2BodyDef;
import ludus.Box2D.Dynamics.b2World;
import ludus.b2_ludus.Observers.LifeObserver;
import ludus.b2_ludus.b2_globals;

	public class Actor extends Sprite  implements IActor
	{
		
		//--------Atributes
		private var _body:Sprite;
		private var _virtualWorld:b2World;		
		private var _virtualBody:b2Body ;
		private var _stage:Stage;
		private var _life:Number;
		private var _lifeObserver:LifeObserver;
		
		//Atributs -- Utilities  
		public var globals:b2_globals = new b2_globals();
		
		public function Actor(pstage:Stage, pvirtualWorld:b2World, pbody:Sprite,pobserver:LifeObserver)
		{
			actorStage =pstage;
			virtualWorld = pvirtualWorld;
			body = pbody;
			if(pbody != null){
				actorStage.addChild(pbody);
			}
		}
		//Actor Owm Methods
		
		//This method build the B2Body
		//Warning this method has to call only One time in the life of object
		public function buildVirtualBody(){
			
		}
		//IActor Implements Method's
		public 	function getMC():Sprite{
			return body;			
		}
		public function update(){
			
		}
		public function notify(){
			
		}
		public function defend(){
			
		}
		public function moveLeft(){
			
		}
		public function moveRight(){
			
		}
		public function rotateLeft(){
			
		}
		public function rotateRight(){
			
		}
		public function attack(){
			
		}
		public  function moveDown(){
			
		}
		public function moveUp(){
			
		}
		public function update_mc(){}
		
		public  function applyImpulseLeft(x:Number, y:Number){
			
		}
		public function applyImpulseRight(x:Number, y:Number){
			
		}	
		
		public function applyImpulseDown(x:Number, y:Number){
			
		}
		public function applyImpulseUp(x:Number, y:Number){
			
		}
		public function reduceLife(pcantToReduce:Number){
			if(life>0){
				if(pcantToReduce >life){
					life =0;
				}else{
					life -pcantToReduce;
				}
			}	
		}
		//Properties
		public function get body():Sprite{return _body;}
		public function set body(value:Sprite):void{_body = value;}
		
		public function get virtualWorld():b2World{return _virtualWorld;}
		public function set virtualWorld(value:b2World):void{_virtualWorld = value;}
		
		public function get virtualBody():b2Body{return _virtualBody;}
		public function set virtualBody(value:b2Body):void{_virtualBody = value;}
		
		public function get actorStage():Stage{return _stage;}
		public function set actorStage(value:Stage):void{_stage = value;}
	
		public  function get life():Number{return _life;}
		public  function set life(value:Number):void{_life = value;}
	}
}