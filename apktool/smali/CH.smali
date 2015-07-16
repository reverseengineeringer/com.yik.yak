.class public LCH;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/yik/yak/ui/activity/VerificationActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 1

    .prologue
    .line 652
    iput-object p1, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 653
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, LCH;->a:Landroid/view/LayoutInflater;

    .line 654
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0d01d0

    .line 684
    iget-object v0, p0, LCH;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03007c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 685
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 686
    const v1, 0x7f0d01d1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    const v1, 0x7f0d01d2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v3, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    const v1, 0x7f0d01cf

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v3, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 689
    iget-object v3, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v3, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 691
    iget-object v1, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->k(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v3, LCI;

    invoke-direct {v3, p0}, LCI;-><init>(LCH;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 705
    iget-object v3, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    const v1, 0x7f0d01cd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v3, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 706
    iget-object v1, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->j(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v3, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/VerificationActivity;->p(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/text/TextWatcher;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 708
    new-instance v1, LCJ;

    invoke-direct {v1, p0}, LCJ;-><init>(LCH;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 733
    iget-object v0, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->u(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 735
    return-object v2
.end method

.method private b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, LCH;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 740
    iget-object v2, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    const v0, 0x7f0d01d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v2, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->c(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 741
    const v0, 0x7f0d01d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 742
    iget-object v2, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->d(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, LCK;

    invoke-direct {v2, p0}, LCK;-><init>(LCH;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 766
    return-object v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 771
    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 772
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    .line 670
    packed-switch p2, :pswitch_data_0

    .line 679
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 680
    return-object v0

    .line 672
    :pswitch_0
    invoke-direct {p0, p1}, LCH;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 675
    :pswitch_1
    invoke-direct {p0, p1}, LCH;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 663
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 785
    :goto_0
    return-void

    .line 778
    :pswitch_0
    iget-object v0, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->v(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    goto :goto_0

    .line 782
    :pswitch_1
    iget-object v0, p0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->w(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    goto :goto_0

    .line 776
    :pswitch_data_0
    .packed-switch 0x7f0d01d1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
