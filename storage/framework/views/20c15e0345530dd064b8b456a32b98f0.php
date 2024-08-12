<head>
    <title>Netflop</title>
    <link rel="shortcut icon" type="image/png" href="<?php echo e(asset('datasources/img/netflop.png')); ?>">
</head>

<?php $__env->startSection('content'); ?>
<div class="container" style=" border-radius: 5px; 
background-color: rgba(1, 1, 1, 0.718); 
padding: 20px;">
    <h1>Sign In</h1>
    <?php if(Session::has('success')): ?>
        <div class="alert alert-success"><?php echo e(Session::get('success')); ?>

        </div>
    <?php endif; ?>
    <form class="form" method="post" action="<?php echo e(route('login.post')); ?>">
        <?php echo csrf_field(); ?>

        <input type="email" name="email" placeholder="Email or phone number">
        <?php if($errors->has('email')): ?>
        <span class="text-danger"><?php echo e($errors->first('email')); ?></span>
        <?php endif; ?>

        <input type="password" name="password" placeholder="Password">
        <?php if($errors->has('password')): ?>
        <span class="text-danger"><?php echo e($errors->first('password')); ?></span>
        <?php endif; ?>

        <input type="submit" name="submit" class="btn btn-success" value="Sign in">
        <div class="form-check-box">
            <div class="">
                <input type="checkbox">
                <label>Remember me</label>
            </div>
            <a href="forget-password">Forget password</a>
        </div>
    </form>

    <div class="content">
        <h2>New to Netflix? <a href="register">Sign up now.</a> </h2> <br>
        <h2>This page is protected by Google reCAPTCHA to ensure you're not a bot. Learn more.</h2>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /application/resources/views/auth/login.blade.php ENDPATH**/ ?>