package blog.zzq.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import blog.zzq.dao.BaseDaoImpl;
import blog.zzq.orm.Img;
import blog.zzq.service.ImgService;
@Service
@Transactional
public class ImgServiceImpl extends BaseDaoImpl<Img> implements ImgService{

}
