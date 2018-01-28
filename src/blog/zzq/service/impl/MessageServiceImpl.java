package blog.zzq.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import blog.zzq.dao.BaseDaoImpl;
import blog.zzq.orm.Message;
import blog.zzq.service.MessageService;
@Service
@Transactional
public class MessageServiceImpl extends BaseDaoImpl<Message> implements MessageService{

}
