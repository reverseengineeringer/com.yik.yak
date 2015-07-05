.class public LDJ;
.super LDf;
.source "SourceFile"

# interfaces
.implements LBd;
.implements LBh;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/Spinner;

.field private e:LAq;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, LDf;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, LDJ;->c:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDJ;->f:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDJ;->g:Ljava/util/List;

    .line 297
    return-void
.end method

.method static synthetic a(LDJ;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, LDJ;->g:Ljava/util/List;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)LDJ;
    .locals 3

    .prologue
    .line 59
    new-instance v0, LDJ;

    invoke-direct {v0}, LDJ;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v2, "KEY_PRESELECTED_OPTION"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, LDJ;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v0
.end method

.method static synthetic b(LDJ;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    const-string v0, "Contact Us"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, LDJ;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0}, LDJ;->d()V

    .line 293
    return-void
.end method

.method public d()V
    .locals 9

    .prologue
    const v7, 0x7f0d010e

    const v4, 0x7f0d010d

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 196
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    const v1, 0x7f0d010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, LDJ;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You must enter a category first."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v4

    .line 206
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, LDJ;->c:Landroid/content/Context;

    const-string v1, "You must enter a comment first."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, LDJ;->c:Landroid/content/Context;

    const-string v1, "You must either enter a valid email or leave it blank."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Select category"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    :cond_3
    iget-object v0, p0, LDJ;->c:Landroid/content/Context;

    const-string v1, "Please select a category."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 222
    :cond_4
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0, v3}, LGs;->h(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 226
    :try_start_0
    iget-object v0, p0, LDJ;->c:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 227
    iget-object v6, p0, LDJ;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_1
    const-wide/16 v6, 0x6

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LDJ;->e:LAq;

    invoke-virtual {v1}, LAq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 237
    const-string v4, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v4, "email"

    invoke-virtual {v1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "category"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-virtual {v0}, LAw;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "contactUs"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, LzY;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v2

    .line 248
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v3

    const-string v0, "RequestBody:body"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v0

    .line 250
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Lxw;)Lxv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 255
    invoke-static {v8}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 256
    new-instance v1, LDM;

    invoke-direct {v1, p0}, LDM;-><init>(LDJ;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    .line 269
    iget-object v0, p0, LDJ;->c:Landroid/content/Context;

    const-string v1, "You have contacted Yik Yak"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    invoke-virtual {p0}, LDJ;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 136
    invoke-super {p0, p1}, LDf;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, LDJ;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, LDJ;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "KEY_PRESELECTED_OPTION"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    if-nez v6, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    invoke-static {p0, v0}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 147
    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 177
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 147
    :sswitch_0
    const-string v7, "/geofence"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v7, "/peek"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v7, "/idea"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v7, "/issue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v7, "/report"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    goto :goto_1

    :sswitch_5
    const-string v7, "/other"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v7, "/basecamp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    .line 149
    :pswitch_0
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v3, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v4, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 161
    :pswitch_3
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v5, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 165
    :pswitch_4
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 169
    :pswitch_5
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 173
    :pswitch_6
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x59ca5351 -> :sswitch_0
        -0x2e04edff -> :sswitch_6
        0x2c78fa6 -> :sswitch_2
        0x2cac20a -> :sswitch_1
        0x56316e0a -> :sswitch_3
        0x56864441 -> :sswitch_5
        0x7e913623 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, LDf;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, LDJ;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 74
    const v0, 0x7f030043

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LDJ;->b:Landroid/view/View;

    .line 75
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LDJ;->c:Landroid/content/Context;

    .line 76
    iget-object v0, p0, LDJ;->c:Landroid/content/Context;

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    iput-object v0, p0, LDJ;->e:LAq;

    .line 78
    invoke-static {}, LzQ;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, LDJ;->g:Ljava/util/List;

    const v1, 0x7f08006b

    invoke-virtual {p0, v1}, LDJ;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, LDJ;->f:Ljava/util/List;

    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, LDJ;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    iget-object v0, p0, LDJ;->g:Ljava/util/List;

    invoke-virtual {p0}, LDJ;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p0, LDJ;->f:Ljava/util/List;

    invoke-virtual {p0}, LDJ;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    const v1, 0x7f0d010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    new-instance v1, LDK;

    invoke-direct {v1, p0}, LDK;-><init>(LDJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    const v1, 0x7f0d010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 97
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 98
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const-string v2, "com.yik.yak.url:"

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    const v1, 0x7f0d010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 101
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 103
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    new-instance v1, LDN;

    iget-object v0, p0, LDJ;->c:Landroid/content/Context;

    const v2, 0x7f030027

    iget-object v3, p0, LDJ;->f:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, LDN;-><init>(Landroid/content/Context;ILjava/util/List;LDK;)V

    .line 110
    const v0, 0x1090009

    invoke-virtual {v1, v0}, LDN;->setDropDownViewResource(I)V

    .line 112
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    const v2, 0x7f0d010d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    .line 113
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 115
    iget-object v0, p0, LDJ;->d:Landroid/widget/Spinner;

    new-instance v1, LDL;

    invoke-direct {v1, p0}, LDL;-><init>(LDJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 130
    invoke-virtual {p0, v5}, LDJ;->setHasOptionsMenu(Z)V

    .line 131
    iget-object v0, p0, LDJ;->b:Landroid/view/View;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, LDf;->onStart()V

    .line 186
    invoke-virtual {p0}, LDJ;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 187
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, LDf;->onStop()V

    .line 192
    invoke-virtual {p0}, LDJ;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 193
    return-void
.end method
