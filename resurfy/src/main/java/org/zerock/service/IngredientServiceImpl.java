package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.IngredientVO;
import org.zerock.mapper.RecipeMapper;
import org.zerock.mapper.RecipeMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor 
public class IngredientServiceImpl implements IngredientService {
	private RecipeMapper mapper;
	@Override
	public boolean register(List<IngredientVO> boards) {
	    try {
	        log.info("register ingredients...");
	        for (IngredientVO board : boards) {
	            mapper.insertIngredient(board);
	        }
	        return true;
	    } catch (Exception e) {
	        log.error("Error registering ingredients", e);
	        return false;
	    }
	}

	/*@Override
	public List<IngredientVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}*/
	
	@Override
	public List<IngredientVO> getList() {
		log.info("getListIngre.......");
		return mapper.getIngreList();
	}
	
	@Override
	public List<IngredientVO> get(Long bno) {
		log.info("getIngre.......");
		return mapper.readIngredient(bno);
	}



	@Override
	public boolean remove(Long bno) {
		log.info("removeIngre......." + bno);
		return mapper.deleteIngredient(bno)==1;	
	}

	@Override
	public boolean modify(IngredientVO board) {
		log.info("modifyIngre......." + board);
		return mapper.updateIngredient(board) == 1;
		
	}
	
	@Override
	public List<String> getIngreList(Long bno, String userID) {
		return mapper.readIngreName(bno, userID);
	}

	@Override
	public List<String> getIngreListHave(Long bno, String userID) { 
		return mapper.readIngreNameHave(bno, userID);
	}


	




}
