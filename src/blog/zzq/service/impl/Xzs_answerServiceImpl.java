package blog.zzq.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import blog.zzq.dao.BaseDaoImpl;
import blog.zzq.orm.Xzs_answer;
import blog.zzq.service.Xzs_answerService;
@Service
@Transactional
public class Xzs_answerServiceImpl extends BaseDaoImpl<Xzs_answer> implements Xzs_answerService{

}
