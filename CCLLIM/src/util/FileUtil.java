package util;

import java.io.*;

public class FileUtil {
	
	public static void saveImage(String root, String iname, byte[] ifile) throws IOException {
		
		if(iname.equals("")){
			return;
		}
		
		root += "/images"; //어디든 위치를 잡기위해
		File f = new File(root);
		
		if (!f.exists()) {
			f.mkdir();
		} //없으면 한번 만들어 줌.
		
		f = new File(root + "/" + iname);//이름을 /추가해서 
		FileOutputStream out = new FileOutputStream(f);
		out.write(ifile);
		out.close();	
	}
}