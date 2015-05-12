using UnityEngine;
using System.Collections;

public class Monster : MonoBehaviour {
	public Vector3 velocity;
	public float speed;
	bool first_turn = true;
	bool second_turn = true;
	public int HP;

	// Use this for initialization
	void Start () {
		velocity.x = speed;
		HP = GV.getInstance ().HP;
	}
	
	// Update is called once per frame
	void FixedUpdate () {

		Vector3 p = transform.position;

		if (first_turn && p.x > 0.03) {
			velocity.y = -speed;
			velocity.x = 0;
			first_turn = false;
		} else if (second_turn && p.y < -0.95) {
			velocity.x = speed;
			velocity.y = 0;
			second_turn = false;
		} else if (p.x > 4.3) {
			GameObject.Destroy(gameObject);
			Controller.getInstance().killMonster();
			GV.getInstance().lives--;
			if (GV.getInstance().lives <= 0){
				Controller.getInstance().gameover();
			}
		}

//		Debug.Log (velocity.x);
		transform.position += velocity*Time.deltaTime;

	}

//	void OnCollisionEnter2D(Collision2D col){
//		run (col);
//	}

	void OnTriggerEnter2D(Collider2D col){
		run (col);
	}
	
	void run(Collider2D col){
		if (col.gameObject.name == "Bullet(Clone)") {
			GameObject.Destroy(col.gameObject);
			if (--HP == 0){
				GameObject.Destroy(gameObject);
				GV.getInstance().score += 10;
				Controller.getInstance().killMonster();
			}
		}
	}
}
