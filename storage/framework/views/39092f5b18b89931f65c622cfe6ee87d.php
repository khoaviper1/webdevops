<?php $__env->startSection('content'); ?>
<div class="container">
    <h1>Sign Up</h1>
    <!-- <div class="form">
        <input type="email" placeholder="Email or phone number">
        <input type="fullname" placeholder="Full name">
        <input type="date" placeholder="Date of birth">
        <input type="password" placeholder="Password">
        <input type="password" placeholder="Re-enter Password">
        <input type="submit" value="Sign Up">
        <input type="checkbox">
        <label>Remember me</label>
        <a href="#">Need help?</a>
    </div> -->
    <form class="form" method="post" action="<?php echo e(route('registration.post')); ?>">
        <?php echo csrf_field(); ?>

        <input type="text" name="name" placeholder="Enter your Name">
        <?php if($errors->has('name')): ?>
        <span class="text-danger"><?php echo e($errors->first('name')); ?></span>
        <?php endif; ?>


        <input type="text" name="email" placeholder="Enter your email">
        <?php if($errors->has('email')): ?>
        <span class="text-danger"><?php echo e($errors->first('email')); ?></span>
        <?php endif; ?>

        <input type="text" onclick="(this.type='date')" name="birthday" placeholder="Date of birth">
        <?php if($errors->has('birthday')): ?>
        <span class="text-danger"><?php echo e($errors->first('birthday')); ?></span>
        <?php endif; ?>

        <input type="password" name="password" placeholder="Password">
        <?php if($errors->has('password')): ?>
        <span class="text-danger"><?php echo e($errors->first('password')); ?></span>
        <?php endif; ?>

        <input type="password" name="repassword" placeholder="Re-enter Password">
        <?php if($errors->has('repassword')): ?>
        <span class="text-danger"><?php echo e($errors->first('repassword')); ?></span>
        <?php endif; ?>

        <input type="submit" name="submit" value="Sign Up">

    </form>
    <div class="content">
        <h2>New to Netflix? <a href="login">Sign in now.</a> </h2> <br>
        <h2>This page is protected by Google reCAPTCHA to ensure you're not a bot. Learn more.</h2>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /application/resources/views/auth/registration.blade.php ENDPATH**/ ?>