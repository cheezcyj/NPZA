package com.pcwk.ehr.aspectj;

public class MemberImpl implements Member {

	@Override
	public int doSave() {
		System.out.println("┌──────────────────────────────┐");
		System.out.println("│doSave                        │");
		System.out.println("└──────────────────────────────┘");	
		
		for(int i=0;i<1_000;i++) {
			for(int j=0;j<1_000;j++) {
				System.out.print("");
			}
		}
		return 0;
	}

	@Override
	public int doUpdate() {
		System.out.println("┌──────────────────────────────┐");
		System.out.println("│doUpdate                      │");
		System.out.println("└──────────────────────────────┘");	
		return 0;
	}
  
	@Override
	public int delete() {
		System.out.println("┌──────────────────────────────┐");
		System.out.println("│delete                        │");
		System.out.println("└──────────────────────────────┘");	
		return 0;
	}

	@Override
	public void doRetrieve(int age) {
		System.out.println("┌──────────────────────────────┐");
		System.out.println("│doRetrieve                    │");
		System.out.println("└──────────────────────────────┘");	

	}

}
