<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="mt-5">
        <?php if($errors-> any()): ?>
            <div class="col-12">
                <?php $__currentLoopData = $error->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="alert alert-danger"><?php echo e($error); ?></div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        <?php endif; ?>

        <?php if(session()->has('error')): ?>
            <div class="alert alert-danger"><?php echo e(session('error')); ?></div>
        <?php endif; ?>

        <?php if(session()->has('success')): ?>
            <div class="alert alert-success"><?php echo e(session('success')); ?></div>  
        <?php endif; ?>
    </div>
    <h1>Reset Password</h1>
    
    <form class="form" method="post" action="<?php echo e(route('forget.password.post')); ?>">
        <?php echo csrf_field(); ?>

        <input type="email" name="email" placeholder="Email or phone number">
        <?php if($errors->has('email')): ?>
        <span class="text-danger"><?php echo e($errors->first('email')); ?></span>
        <?php endif; ?>

        

        <input type="submit" name="submit" class="btn btn-success" value="submit">
        
    </form>

</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /application/resources/views/auth/forget-password.blade.php ENDPATH**/ ?>