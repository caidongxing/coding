package com.renjun.web;







import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import net.sf.json.JSONSerializer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.renjun.common.GlobalConstant;

import com.renjun.po.yw_ReceivingDatamx;
import com.renjun.service.ApplicantService;
import com.renjun.service.BoxOfficeService;
import com.renjun.service.DataBaseService;
import com.renjun.service.ReceivingDataService;
import com.renjun.vo.JsonReturn;
import com.renjun.vo.yw_ReceivingData;



@Controller
@RequestMapping("/ReceivingDataController")
public class ReceivingDataAction {
   	   
	@Resource 
	private BoxOfficeService boxOfficeService;
	
	@Resource 
	private ReceivingDataService receivingDataService;
	
	    
    @RequestMapping("/ReceivingData")
    public ModelAndView box_officeMessage(Model model,Map<String, Object> modelList){
    	ModelAndView mv=new ModelAndView("/boxOffice/receivingData");     
        List<yw_ReceivingData> yw_ReceivingData=receivingDataService.selectReceivingData();
        List<yw_ReceivingData> yw_ReceivingDataMxs=receivingDataService.selectReceivingDataMxById(GlobalConstant.boxofficeid);             
        modelList.put("yw_ReceivingData", yw_ReceivingData);
        modelList.put("yw_ReceivingDataMxs", yw_ReceivingDataMxs);              
    	return mv;
    }

    @RequestMapping("/DeleteReceivingData")
    public ModelAndView DeleteReceivingData(String receivingdataid,Model model,Map<String, Object> modelList){
    	ModelAndView mv=new ModelAndView("/boxOffice/receivingData"); 
    	StringTokenizer tokenizer=new StringTokenizer(receivingdataid,";");
     	while (tokenizer.hasMoreTokens()) {
		long id = Long.parseLong(tokenizer.nextToken());		
		int receivingdataId=(int)id;			
		receivingDataService.deleteByreceivingDataID(receivingdataId);			
	} 
     	  List<yw_ReceivingData> yw_ReceivingData=receivingDataService.selectReceivingData();
          List<yw_ReceivingData> yw_ReceivingDataMxs=receivingDataService.selectReceivingDataMxById(GlobalConstant.boxofficeid);             
          modelList.put("yw_ReceivingData", yw_ReceivingData);
          modelList.put("yw_ReceivingDataMxs", yw_ReceivingDataMxs);   
     	  
    	return mv;
    }
    
    @RequestMapping("/insertReceivingData")
    public ModelAndView insertReceivingData(String receivingdataid,Model model,Map<String, Object> modelList,com.renjun.po.yw_ReceivingData yw_ReceivingData){
    	ModelAndView mv=new ModelAndView("/boxOffice/receivingData"); 
    	receivingDataService.insertReceivingdata(yw_ReceivingData);
    	List<yw_ReceivingData> ReceivingData=receivingDataService.selectReceivingData();
        List<yw_ReceivingData> yw_ReceivingDataMxs=receivingDataService.selectReceivingDataMxById(GlobalConstant.boxofficeid);             
        modelList.put("yw_ReceivingData", ReceivingData);
        modelList.put("yw_ReceivingDataMxs", yw_ReceivingDataMxs);  
        model.addAttribute("true", 1);
    	return mv;
    }
    
    //上传处理页面  
    @RequestMapping(value="/upload",method = RequestMethod.POST)  
    public ModelAndView upload(@RequestParam("file")MultipartFile upfile,Model model,Map<String, Object> modelList,int receivingdataid,HttpServletRequest request) throws IOException{  
    	ModelAndView mv=new ModelAndView("/boxOffice/receivingData");  
    	String pathString = request.getContextPath();
    	System.out.println(pathString);
    	yw_ReceivingDatamx yw_ReceivingDatamx=new yw_ReceivingDatamx();
    	yw_ReceivingDatamx.setBoxofficeid(GlobalConstant.boxofficeid);
    	yw_ReceivingDatamx.setReceivingdataid(receivingdataid);
        yw_ReceivingDatamx.setUploaddate(new Date());
    	//|获取在Web服务器上的 绝对路径  
        String path ="D:/java/workspace/RealEstateSystem/WebRoot/projectimg";
        		//req.getRealPath("/upload");  
        System.out.println(path);  
        //|获取输入流  
        InputStream is=upfile.getInputStream();  
        long _lTime = System.nanoTime();
        
        //|文件输出流  
        OutputStream os =new FileOutputStream(new File(path,_lTime+upfile.getOriginalFilename()));  
        //|循环写入  
        int length=0;  
        //设置缓存区
        byte [] buffer=new byte[128];  
        //开始写文件
        while((length=is.read(buffer))!=-1)  
        {  
            os.write(buffer,0, length);  
        } 
        yw_ReceivingDatamx.setUploadpictures(_lTime+upfile.getOriginalFilename());
        receivingDataService.insertReceivingDatamx(yw_ReceivingDatamx);
        //关闭流
        is.close();  
        os.close(); 
        String xls_path = path+"/"+upfile.getOriginalFilename();
        //xls2003
              
        mv.addObject("filename", upfile.getOriginalFilename());
        com.renjun.vo.yw_BoxOffice boxOffice=boxOfficeService.selectBoxOfficeById(GlobalConstant.boxofficeid);
        List<yw_ReceivingData> yw_ReceivingData=receivingDataService.selectReceivingData();
        List<yw_ReceivingData> yw_ReceivingDataMxs=receivingDataService.selectReceivingDataMxById(GlobalConstant.boxofficeid);
        model.addAttribute("box_officeMessage", boxOffice);
        modelList.put("yw_ReceivingData", yw_ReceivingData);
        modelList.put("yw_ReceivingDataMxs", yw_ReceivingDataMxs);
        return mv;  
    }
    
    //显示图片
    @ResponseBody
    @RequestMapping(value= "/showPicture",produces="application/json;charset=utf-8")
   public Object showPicture(int receivingdatamxid,HttpServletResponse response){
    	
    	yw_ReceivingDatamx yw_ReceivingDatamx=receivingDataService.selectUploadPicturesByID(receivingdatamxid);
    	String paht=yw_ReceivingDatamx.getUploadpictures();
    	 JsonReturn jsonReturn=new JsonReturn();
    	 jsonReturn.setPath(paht);
    	return JSONSerializer.toJSON(jsonReturn) .toString();
    
    }
	   
        
    
}