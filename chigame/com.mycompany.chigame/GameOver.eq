
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver: SEScene
{
	int w;
	int h;
	int j;
	public static int x;
	public static int y;
	SESprite background1;

	
		
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		AudioClipManager.prepare("love");
		h = get_scene_height();
		AudioClipManager.prepare("hip");
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("done", "done", w, h);
		background1 = add_sprite_for_image(SEImage.for_resource("done"));
		background1.move(0,0);		
		AudioClipManager.play("love");
		
		
	}
}