<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<div class="box">
    <div class="box-header">
        <h2 class="blue"><i class="fa-fw fa fa-plus"></i><?= lang('add_promo'); ?></h2>
    </div>
    <?php $attrib = ['data-toggle' => 'validator', 'role' => 'form'];
    echo admin_form_open('promos/add', $attrib); ?>
    <div class="box-content">
        <div class="row">
            <div class="col-lg-12">
                <p class="introtext"><?= lang('enter_info'); ?></p>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group col-sm-6">
                            <?= lang('promo_name', 'name'); ?>
                            <?php echo form_input('name', '', 'class="form-control tip" id="name" data-bv-notempty="true"'); ?>
                            
                        </div>

                         <!-- <div class="form-group col-sm-6">
                         <?= lang('massage', 'massage'); ?>
                            <?php echo form_input('massage', '', 'class="form-control tip" id="massage" data-bv-notempty="true"'); ?>
                            
                        </div> -->
                        <div class="form-group col-sm-6">
                            <?= lang('product', 'sproduct'); ?>
                            <?php echo form_input('sproduct', (isset($_POST['sproduct']) ? $_POST['sproduct'] : ''), 'class="form-control" id="sproduct" data-bv-notempty="true"'); ?>
                            <input type="hidden" name="product" value="<?= isset($_POST['product']) ? $_POST['product'] : '' ?>" id="report_product_id"/>
                        </div>
                     </div>     

                    <div class="col-sm-12">     

                        <div class="form-group col-sm-6">
                            <?= lang('start_date', 'start_date'); ?>
                            <?php echo form_input('start_date', '', 'class="form-control tip date" id="start_date"'); ?>
                        </div>

                        <div class="form-group col-sm-6">
                            <?= lang('end_date', 'end_date'); ?>
                            <?php echo form_input('end_date', '', 'class="form-control tip date" id="end_date"'); ?>
                        </div>
                     
                    </div>   

                    <div class="col-sm-12">    

                        <div class="form-group col-sm-6">
                            <?= lang('discount', 'discount'); ?>
                            <?= form_input('discount', set_value('discount'), 'class="form-control tip" id="discount"'); ?>
                            
                        </div>

                        <div class="form-group col-sm-6">
                            <?= lang('discount_type', 'discount_type'); ?>
                            <select name="discount_type" class="form-control">
                                <option value="">Select</option>
                                <option value="percentage"><?= lang('percentage', 'percentage'); ?></option>
                                <option value="amount"><?= lang('amount', 'amount'); ?></option>
                            </select>
                        </div>

                    </div>

                    <div class="col-sm-12">

                        <div class="form-group col-sm-6">
                            <?= lang('mininum_order_amount', 'min_order_amount'); ?>
                            <?= form_input('min_order_amount', set_value('min_order_amount'), 'class="form-control tip" id="min_order_amount"'); ?>
                         </div>
                         
                        <div class="form-group col-sm-6">
                            <?= lang('maximum_discount_amount', 'max_discount_amount'); ?>
                            <input type="text" class="form-control" name="max_discount_amount" id="max_discount_amount">
                        </div>

                    </div>

                    <div class="col-sm-12">
                     <div class="form-group col-sm-4">
                            <?= lang('repeat_usage', 'repeat_usage'); ?>
                            <select name="repeat_usage" id="repeat_usage" class="form-control">
                                <option value="">Select</option>
                                <option value="1"><?= lang('allowed', 'allowed'); ?></option>
                                <option value="0"><?= lang('disallowed', 'disallowed'); ?></option>
                            </select>
                        </div>

                        <div class="form-group col-sm-4">
                            <label for="">Status</label>
                            <select name="status" id="status" class="form-control">
                                <option value="">Select</option>
                                <option value="1"><?= lang('active', 'active'); ?></option>
                                <option value="0"><?= lang('deactive', 'deactive'); ?></option>
                            </select>
                        </div>
                        <div class="form-group col-sm-4" id="repeat_usage_block" style="display:none">
                            <label for="">No. Of Repeat Usage</label>
                            <input type="number" class="form-control" name="no_of_repeat_usage" id="no_of_repeat_usage">
                        </div>

                    </div>     




                    <div class="col-md-12">
                        <div class="form-group">
                            <?= lang('description', 'description'); ?>
                            <?php echo form_textarea('description', '', 'class="form-control skip" id="description" style="height:100px;"'); ?>
                        </div>
                        <?php echo form_submit('add_promo', lang('add_promo'), 'class="btn btn-primary"'); ?>
                    </div>



                </div>

                <!-- <div class="row">
                        <div class="form-group col-md-6">
                            <label for="">Promo Code</label>
                            <input type="text" class="form-control" name="promo_code">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Message</label>
                            <input type="text" class="form-control" name="message">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Start Date</label>
                            <input type="date" class="form-control" name="start_date" id="start_date">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">End Date</label>
                            <input type="date" class="form-control" name="end_date" id="end_date">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">No. Of Users</label>
                            <input type="number" class="form-control" name="no_of_users">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Minimum Order Amount</label>
                            <input type="number" class="form-control" name="minimum_order_amount" step="any">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Discount</label>
                            <input type="number" class="form-control" name="discount" id="discount" step="any">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Discount Type</label>
                            <select name="discount_type" class="form-control">
                                <option value="">Select</option>
                                <option value="percentage">Percentage</option>
                                <option value="amount">Amount</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Max Discount Amount</label>
                            <input type="text" class="form-control" name="max_discount_amount" id="max_discount_amount">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Repeat Usage</label>
                            <select name="repeat_usage" id="repeat_usage" class="form-control">
                                <option value="">Select</option>
                                <option value="1">Allowed</option>
                                <option value="0">Not Allowed</option>
                            </select>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Status</label>
                            <select name="status" id="status" class="form-control">
                                <option value="">Select</option>
                                <option value="1">Active</option>
                                <option value="0">Deactive</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6" id="repeat_usage_block" style="display:none">
                            <label for="">No. Of Repeat Usage</label>
                            <input type="number" class="form-control" name="no_of_repeat_usage" id="no_of_repeat_usage">
                        </div>

                        
                
                <div>     -->

                


            </div>

           
        </div>
        <?php echo form_close(); ?>
    </div>
