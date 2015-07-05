.class public Ltx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

.field private b:Ltg;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 440
    iput-object p1, p0, Ltx;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p2, p0, Ltx;->c:Landroid/view/View;

    .line 442
    const-string v0, "com_mixpanel_android_TAG_prompt_text"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltx;->d:Landroid/widget/TextView;

    .line 443
    const-string v0, "com_mixpanel_android_TAG_text_answer"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltx;->e:Landroid/widget/TextView;

    .line 444
    const-string v0, "com_mixpanel_android_TAG_choice_list"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ltx;->f:Landroid/widget/ListView;

    .line 445
    iget-object v0, p0, Ltx;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Ltx;->e:Landroid/widget/TextView;

    new-instance v1, Lty;

    invoke-direct {v1, p0, p1}, Lty;-><init>(Ltx;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 466
    iget-object v0, p0, Ltx;->f:Landroid/widget/ListView;

    new-instance v1, Ltz;

    invoke-direct {v1, p0, p1}, Ltz;-><init>(Ltx;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 481
    return-void
.end method

.method static synthetic a(Ltx;)Ltg;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Ltx;->b:Ltg;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Ltx;->c:Landroid/view/View;

    return-object v0
.end method

.method public a(Ltg;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 489
    iput-object p1, p0, Ltx;->b:Ltg;

    .line 490
    iget-object v0, p0, Ltx;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ltx;->b:Ltg;

    invoke-virtual {v2}, Ltg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Ltx;->c:Landroid/view/View;

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 493
    invoke-virtual {p1}, Ltg;->d()Lth;

    move-result-object v2

    .line 494
    sget-object v3, Lth;->c:Lth;

    if-ne v3, v2, :cond_3

    .line 495
    iget-object v2, p0, Ltx;->f:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 496
    iget-object v2, p0, Ltx;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    if-eqz p2, :cond_0

    .line 498
    iget-object v2, p0, Ltx;->e:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    :cond_0
    iget-object v2, p0, Ltx;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-virtual {v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_2

    .line 501
    iget-object v2, p0, Ltx;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 502
    iget-object v2, p0, Ltx;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 525
    :cond_1
    :goto_0
    iget-object v0, p0, Ltx;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 526
    return-void

    .line 505
    :cond_2
    iget-object v2, p0, Ltx;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 507
    :cond_3
    sget-object v3, Lth;->b:Lth;

    if-ne v3, v2, :cond_5

    .line 508
    iget-object v2, p0, Ltx;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 509
    iget-object v0, p0, Ltx;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Ltx;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    new-instance v2, Ltu;

    invoke-virtual {p1}, Ltg;->c()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Ltx;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-virtual {v3}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ltu;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;)V

    .line 512
    iget-object v0, p0, Ltx;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 513
    iget-object v0, p0, Ltx;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 514
    if-eqz p2, :cond_1

    move v0, v1

    .line 515
    :goto_1
    invoke-virtual {v2}, Ltu;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 516
    invoke-virtual {v2, v0}, Ltu;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 518
    iget-object v1, p0, Ltx;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 515
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    :cond_5
    new-instance v0, LtB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No way to display question type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LtB;-><init>(Ljava/lang/String;Lts;)V

    throw v0
.end method
