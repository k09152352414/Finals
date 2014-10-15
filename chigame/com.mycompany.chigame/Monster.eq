
/*
 * Monster
 * Created by Eqela Studio 2.0b7.4
 */

public class Monster: SEEntity
{
	SESprite monster;
	int h;
	int w;
	int mx;
	int my;
	int speed;	

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		AudioClipManager.prepare("love");
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("monster","monster",w*0.1,h*0.15);
		monster = add_sprite_for_image(SEImage.for_resource("monster"));
		monster.move(Math.random(0,w), Math.random(0,h));
		speed = Math.random(1,80)*10;
		}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(monster.get_x()+(MainScene.x-monster.get_x())/speed,monster.get_y()+(MainScene.y-monster.get_y())/speed );
		if((mx +0.1*get_scene_width()>= MainScene.x && mx<=MainScene.x) && (my+0.11*get_scene_height() >= MainScene.y&&my<=MainScene.y)) {
			MainScene.collide = true;			
		}
		}
}
