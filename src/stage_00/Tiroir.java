package stage_00;

public class Tiroir {
	public String[] tiroirs;
	public Tiroir(String[] tiroirs) {
		this.tiroirs = tiroirs;
		System.out.println("We'll create buttons");
		for(int i = 0; i < tiroirs.length; i++) {
			System.out.println(i + "- " + tiroirs[i]);
		}
	}
}
