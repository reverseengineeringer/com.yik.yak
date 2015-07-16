.class public LEu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/DeveloperFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, LEu;->a:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 82
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    invoke-static {v0}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->getEnvironment(I)Lcom/yik/yak/data/models/Environment;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/yik/yak/data/models/Environment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    check-cast p1, Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    invoke-static {}, LAM;->a()LAM;

    move-result-object v0

    invoke-virtual {v0, v1}, LAM;->a(Lcom/yik/yak/data/models/Environment;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
