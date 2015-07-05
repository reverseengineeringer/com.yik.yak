.class public Lcom/mixpanel/android/surveys/SurveyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final k:I


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Lcom/mixpanel/android/surveys/CardCarouselLayout;

.field private c:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x5a

    .line 527
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mixpanel/android/surveys/SurveyActivity;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 520
    iput-boolean v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:Z

    .line 521
    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    .line 522
    const/4 v0, -0x1

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->j:I

    return-void
.end method

.method public static synthetic a(Lcom/mixpanel/android/surveys/SurveyActivity;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:Z

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {p0}, LsD;->a(Landroid/content/Context;)LsD;

    move-result-object v0

    invoke-virtual {v0}, LsD;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->f()V

    .line 271
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    const-string v1, "We\'d love your feedback!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 273
    const-string v1, "Mind taking a quick survey?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 274
    const-string v1, "Sure"

    new-instance v2, LtG;

    invoke-direct {v2, p0}, LtG;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    const-string v1, "No, Thanks"

    new-instance v2, LtH;

    invoke-direct {v2, p0}, LtH;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Landroid/app/AlertDialog;

    .line 290
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 441
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->d()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->d()Ljava/util/List;

    move-result-object v2

    .line 443
    if-eqz p1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 448
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    :goto_1
    iget v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    .line 454
    iput p1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    .line 455
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltg;

    .line 456
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    move-result-object v1

    .line 457
    invoke-virtual {v0}, Ltg;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 459
    if-ge v3, p1, :cond_3

    .line 460
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    sget-object v4, Ltv;->a:Ltv;

    invoke-virtual {v3, v0, v1, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Ltg;Ljava/lang/String;Ltv;)V
    :try_end_0
    .catch LtB; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_5

    .line 472
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :goto_3
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 461
    :cond_3
    if-le v3, p1, :cond_4

    .line 462
    :try_start_1
    iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    sget-object v4, Ltv;->b:Ltv;

    invoke-virtual {v3, v0, v1, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Ltg;Ljava/lang/String;Ltv;)V
    :try_end_1
    .catch LtB; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 467
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    goto :goto_3

    .line 464
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-virtual {v3, v0, v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Ltg;Ljava/lang/String;)V
    :try_end_2
    .catch LtB; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    .line 86
    sget v0, Lri;->com_mixpanel_android_activity_notification_full:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->setContentView(I)V

    .line 88
    sget v0, Lrh;->com_mixpanel_android_notification_gradient:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    sget v1, Lrh;->com_mixpanel_android_notification_image:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/mixpanel/android/surveys/FadingImageView;

    .line 90
    sget v1, Lrh;->com_mixpanel_android_notification_title:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 91
    sget v1, Lrh;->com_mixpanel_android_notification_subtext:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 92
    sget v1, Lrh;->com_mixpanel_android_notification_button:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/Button;

    .line 93
    sget v1, Lrh;->com_mixpanel_android_button_exit_wrapper:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/LinearLayout;

    .line 95
    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    .line 96
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v1

    check-cast v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    .line 97
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;->c()Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 101
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 102
    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 104
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 105
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const v8, 0x3d75c28f    # 0.06f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 114
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 115
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 116
    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 117
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 123
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    sget v1, Lrg;->com_mixpanel_android_square_dropshadow:I

    invoke-virtual {v9, v1}, Lcom/mixpanel/android/surveys/FadingImageView;->setBackgroundResource(I)V

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v3, 0x64

    if-ge v1, v3, :cond_5

    .line 132
    :cond_1
    sget v1, Lrg;->com_mixpanel_android_square_nodropshadow:I

    invoke-virtual {v9, v1}, Lcom/mixpanel/android/surveys/FadingImageView;->setBackgroundResource(I)V

    .line 142
    :cond_2
    :goto_1
    invoke-virtual {v9, v0}, Lcom/mixpanel/android/surveys/FadingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->j()Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 146
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_3
    new-instance v0, LtC;

    invoke-direct {v0, p0, v2}, LtC;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;Lcom/mixpanel/android/mpmetrics/InAppNotification;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v0, LtD;

    invoke-direct {v0, p0}, LtD;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    new-instance v0, LtE;

    invoke-direct {v0, p0}, LtE;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 197
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 198
    invoke-virtual {v9, v0}, Lcom/mixpanel/android/surveys/FadingImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 206
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 207
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 208
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    invoke-virtual {v12, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 212
    sget v0, Lrf;->com_mixpanel_android_fade_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 213
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    return-void

    .line 119
    :cond_4
    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 120
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_0

    .line 134
    :cond_5
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 136
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 138
    const/16 v3, 0xff

    if-ge v1, v3, :cond_2

    .line 139
    sget v1, Lrg;->com_mixpanel_android_square_nodropshadow:I

    invoke-virtual {v9, v1}, Lcom/mixpanel/android/surveys/FadingImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 110
    nop

    :array_0
    .array-data 4
        -0x1a9f9f84
        -0x1ab7b7a3
        -0x1ae7e7e1
        -0x1ae7e7e1
    .end array-data
.end method

.method private a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 488
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/mixpanel/android/surveys/SurveyActivity;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/mixpanel/android/surveys/SurveyActivity;Ltg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(Ltg;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ltg;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    move-result-object v0

    .line 481
    invoke-virtual {p1}, Ltg;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public static synthetic a(Lcom/mixpanel/android/surveys/SurveyActivity;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:Z

    return p1
.end method

.method public static synthetic b(Lcom/mixpanel/android/surveys/SurveyActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->j:I

    return v0
.end method

.method private b()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    if-eqz v0, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->d()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->d()Ljava/util/List;

    move-result-object v2

    .line 319
    iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d()Ljava/lang/String;

    move-result-object v3

    .line 320
    iget-object v4, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()LsL;

    move-result-object v4

    invoke-interface {v4, v3}, LsL;->b(Ljava/lang/String;)LsL;

    move-result-object v3

    .line 321
    const-string v4, "$responses"

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, LsL;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;

    move-result-object v4

    .line 324
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltg;

    .line 325
    invoke-virtual {v0}, Ltg;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$AnswerMap;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    .line 326
    if-eqz v5, :cond_0

    .line 328
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 329
    const-string v7, "$survey_id"

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->b()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string v7, "$collection_id"

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->c()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string v7, "$question_id"

    invoke-virtual {v0}, Ltg;->a()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string v7, "$question_type"

    invoke-virtual {v0}, Ltg;->d()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 335
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 336
    const-string v7, "$time"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v0, "$value"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v0, "$answers"

    invoke-interface {v3, v0, v6}, LsL;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->flush()V

    .line 349
    :cond_2
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->j:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a(I)V

    .line 350
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->g()V

    .line 219
    if-eqz p1, :cond_0

    .line 220
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    .line 221
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_BEGIN_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:Z

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d()Ljava/lang/String;

    move-result-object v0

    .line 225
    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 252
    :goto_0
    return-void

    .line 231
    :cond_1
    sget v0, Lri;->com_mixpanel_android_activity_survey:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->setContentView(I)V

    .line 233
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    if-nez v0, :cond_2

    .line 236
    sget v0, Lrh;->com_mixpanel_android_activity_survey_id:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    sget v1, Lcom/mixpanel/android/surveys/SurveyActivity;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 241
    :goto_1
    sget v0, Lrh;->com_mixpanel_android_button_previous:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/view/View;

    .line 242
    sget v0, Lrh;->com_mixpanel_android_button_next:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Landroid/view/View;

    .line 243
    sget v0, Lrh;->com_mixpanel_android_progress_text:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Landroid/widget/TextView;

    .line 244
    sget v0, Lrh;->com_mixpanel_android_question_card_holder:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/surveys/CardCarouselLayout;

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    .line 245
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    new-instance v1, LtF;

    invoke-direct {v1, p0}, LtF;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->setOnQuestionAnsweredListener(Ltw;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    return-object v0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 362
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_BEGIN_BUNDLE_KEY"

    iget-boolean v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"

    iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_STATE_BUNDLE_KEY"

    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    return-void
.end method

.method public static synthetic c(Lcom/mixpanel/android/surveys/SurveyActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    return-void
.end method

.method private completeSurvey()V
    .locals 0

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 510
    return-void
.end method

.method public static synthetic d(Lcom/mixpanel/android/surveys/SurveyActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    return v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    :cond_0
    const-string v0, "SurveyState"

    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    .line 401
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;->a()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0

    :cond_0
    const-string v0, "InAppNotificationState"

    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    .line 410
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;->a()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->d()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()LsL;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LsL;->b(Ljava/lang/String;)LsL;

    move-result-object v1

    .line 418
    const-string v2, "$surveys"

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, LsL;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const-string v2, "$collections"

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, LsL;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method private g()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 497
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->setRequestedOrientation(I)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 500
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 501
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 502
    :cond_2
    if-ne v0, v2, :cond_0

    .line 503
    invoke-virtual {p0, v2}, Lcom/mixpanel/android/surveys/SurveyActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private goToNextQuestion()V
    .locals 2

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;->d()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 433
    iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 434
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V

    goto :goto_0
.end method

.method private goToPreviousQuestion()V
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    if-lez v0, :cond_0

    .line 424
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V

    goto :goto_0
.end method


# virtual methods
.method public completeSurvey(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V

    .line 389
    return-void
.end method

.method public goToNextQuestion(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    .line 385
    return-void
.end method

.method public goToPreviousQuestion(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToPreviousQuestion()V

    .line 381
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I

    if-lez v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToPreviousQuestion()V

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->j:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a(I)V

    .line 375
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.mixpanel.android.surveys.SurveyActivity.INTENT_ID_KEY"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->j:I

    .line 68
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->j:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b(I)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    .line 69
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .line 76
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyActivity;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->b()V

    .line 308
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 309
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 296
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Landroid/app/AlertDialog;

    .line 300
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyActivity;->c(Landroid/os/Bundle;)V

    .line 359
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 257
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurveyState"

    if-ne v0, v1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a()V

    .line 261
    :cond_0
    return-void
.end method
